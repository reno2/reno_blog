<template>
	<div  :class="place" class="dmenu__el del__search navbar-nav rsearch">
		<form action="/search">
			<div class="rsearch__el rsearch-in">
				<input autocomplete="off" @input="send" placeholder="Поиск..." v-model="value" type="text" name="q" id="search" class="rsearch-in__input rsearch__input">

			</div>
			<div class="rsearch__el rsearch-btn">
				<button class="rsearch__input rsearch-btn__submit" type="submit"><i class="fas fa-search"></i></button>
			</div>



		</form>

			<div class="searche-resalts">
				<transition name="bounce">
				<div v-if="showRes==true" class="searche-results__wrp">
					<ul>
						<li v-for="item in this.results" :key="item.id">
							<span v-html="item.title"></span>
						</li>
					</ul>
				</div>
				</transition>
			</div>

	</div>
</template>

<script>
    export default {
        props: {
            place: String,
        },
        data (){
            return {
                value : null,
		            showRes: false,
		            results: Array
            }
        },
        mounted() {
            console.log('Component mounted.')
        },
		    methods:{
            async send(){
								if(this.value.length > 2) {
                    const res = await axios.get('/autocomplete?q=' + this.value)
										console.log(res)
                    if (res.data.length > 0) {
												let nData = [];
                        res.data.forEach((el)=>{
                           el.title = (el.title.replace(new RegExp(this.value, "ig"), `<b>${this.value}</b>`));

                           nData.push(el)
                            // console.log(el)
                            // console.log(this.value)
                        })
                        console.log(nData)
                        this.results = nData
                        this.showRes = true
                    } else {
                        this.results = null
                        this.showRes = false
                    }
                }else{
                    this.results = null
                    this.showRes = false
								}

            }
		    }
    }
</script>
<style lang="scss">


	.bounce-enter-active {
		transition: all .3s ease;
	}
	.bounce-leave-active {
		transition: all .3s cubic-bezier(1.0, 0.5, 0.8, 1.0);
	}
	.bounce-enter, .bounce-leave-to
		/* .slide-fade-leave-active до версии 2.1.8 */ {
		transform: translateY(10px);
		opacity: 0;
	}

	.backend{
		position: relative;
			.rsearch-in {
				flex-grow: 1;
				flex-basis: 80%;
				.rsearch__input {
					width: 100%;
					border-radius: 0 !important;
					border:1px solid #e9ecef !important;
				}

			}
		.rsearch-btn{
				flex-grow: 1;
				.rsearch-btn__submit{
					border-radius: 0 !important;
					background: #4e73df !important;
					width: 55px;
					color: #ffffff !important;
					border: 1px solid #4e73df !important;
				}
		}

	}

	.searche-resalts{
		position: absolute;
		bottom: 10px;
		z-index: 9;
		.searche-results__wrp{
			position: absolute;
			top: 0;
			background: #fff;
			width: 270px;
			box-shadow: 0px 6px 11px -5px #0000001a;
			border-left: 2px solid #bff51c;
			ul{
				list-style-type:none;
				padding-left: 16px;
				padding-top: 6px;
			}
		}
	}
</style>
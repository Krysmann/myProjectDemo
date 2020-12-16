var app = new Vue({
  el: "#app",
  data: {
    //查询关键字
    query: "Blank Space",
    //歌曲数组
    musicList: [],
    //歌曲地址
    musicUrl: [],
    //歌曲封面
    musicPic: 'img/BANPRESTO.jpg',
    //用户评论
    usercontent: [],
    //播放状态
    isPlaying: false,
    //遮罩层的显示状态
    isShow: false,
    //mv地址
    mvUrl: "",
  },
  methods: {
    //歌曲搜索
    getMusic: function () {
      var that = this;
      axios.get("https://autumnfish.cn/search?keywords=" + this.query).then(function (response) {
        //console.log(response);
        that.musicList = response.data.result.songs;
      }, function (err) { })
    },
    //歌曲播放
    playMusic: function (musicId) {
      var that = this;
      //获取歌曲
      axios.get("https://autumnfish.cn/song/url?id=" + musicId).then(function (response) {
        //console.log(response.data.data[0].url);
        that.musicUrl = response.data.data[0].url;
      }, function (err) { });
      //获取歌曲专辑封面
      axios.get("https://autumnfish.cn/song/detail?ids=" + musicId).then(function (response) {
        //console.log(response);
        //console.log(response.data.songs[0].al.picUrl);
        that.musicPic = response.data.songs[0].al.picUrl;
      }, function (err) { });
      //获取歌曲热门评论
      axios.get("https://autumnfish.cn/comment/hot?type=0&id=" + musicId).then(function (response) {
        //输出评论  
        //console.log(response.data.hotComments);
        that.usercontent = response.data.hotComments;
      }, function (err) { })
    },
    //播放动画
    play: function () {
      //console.log("play")
      this.isPlaying = true
    },
    pause: function () {
      //console.log("pause")
      this.isPlaying = false
    },
    //播放mv
    playMV: function (mvid) {
      var that = this;
      axios.get("https://autumnfish.cn/mv/url?id=" + mvid).then(function (response) {
        //console.log(response);
        that.isShow = true;
        that.mvUrl = response.data.data.url;
      })
    }
  }
})
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>1. 카카오맵 API 기본</title>
</head>
<body>

    <h2>1. 카카오맵 API 기본</h2>
    <div id="map1" style="width:500px; height:400px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c0861be65f4afa49e7d04466166e745f"></script>
<script>

    function kakaoMapDefault(){
        //카카오 맵 API 기본
        var container = document.getElementById('map1'); // 지도를 담을 영역의 DOM reference
        var options = { // 지도를 생성할 때 필요한 옵션
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표, (필수)
            level: 3 // 지도의 레벨(확대, 축소 정도)
        };
        var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
    }
    kakaoMapDefault();

</script>
</body>
</html>

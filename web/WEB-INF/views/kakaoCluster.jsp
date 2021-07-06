<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>카카오 맵 클러스터</title>
</head>
<body>

    <h2>2. 카카오 맵 클러스터 라이브러리</h2>
    <div id="map2" style="width: 500px; height: 400px;"></div>



<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c0861be65f4afa49e7d04466166e745f&libraries=clusterer"></script>
<script>

    var container = document.getElementById('map2');
    var options = {
        center: new kakao.maps.LatLng(37.49776946445557, 128.4570640526779),
        level:5
    };

    var map2 = new kakao.maps.Map(container, options);

    // 클러스터 생성
    var clusterer = new kakao.maps.MarkerClusterer({
        map: map2, //클러스터링 마커를 표시할 지도 객체
        // makers: markers, // 클러스터링 할 마커 배열
        gridSize: 35, // 클러스터의 격자 크기, 픽셀단위, 해당 격자 영역 안에 마커가 포함되면 클러스터에 포함
        averageCenter: true, // 마커들의 좌표 평균을 클러스터 좌표 설정 여부
        minLevel: 6, // 클러스터링 할 지도의 최소 레벨값
        disableClickZoom: true, // 클러스터 클릭시 지도 확대 여부, true 로 설정하면 클릭시 확대 되지 않는다.
        style: [{ // 클러스터 스타일
            width: '53px', height: '52px',
            background: 'url(cluster.png) no-repeat',
            color: '#fff',
            textAlign: 'center',
            lineHeight: '54px'
        }]
    });

    // // 1) 마커 추가하기. (1개)
    // var marker = new kakao.maps.Marker({
    //     position: new kakao.maps.LatLng(37.4977694, 128.4570640)
    // });
    //
    // clusterer.addMarker(marker);
    //
    // // 2) 마커 제거하기. (1개)
    // clusterer.removeMarker(marker);

    // 3) 여러개 마커 추가하기.
    var marker1, marker2, marker3;
    var markers = [marker1, marker2, marker3];
    marker1 = new kakao.maps.Marker({
        position: new kakao.maps.LatLng(37.49780577, 128.45704214)
    });
    marker2 = new kakao.maps.Marker({
        position: new kakao.maps.LatLng(37.49617834, 128.45750804)
    });
    marker3 = new kakao.maps.Marker({
        position: new kakao.maps.LatLng(37.500163465, 128.45141133)
    })

    clusterer.addMarker(markers);

</script>
</body>
</html>

<#--
    Template Name: links
-->
<#include "header.ftl">
<@header title="tongji">
    <#if (settings.patternimg!true) && (sheet.thumbnail?? && sheet.thumbnail!='') || ((metas.ri?boolean)!true && settings.rimage_cover_sheet_open!true && settings.rimage_url?? && settings.rimage_url!='')>
        <div class="pattern-center-blank"></div>
        <div class="pattern-center">
            <div class="pattern-attachment-img">
                <#if (settings.patternimg!true) && (sheet.thumbnail?? && sheet.thumbnail!='')>
                    <img class="lazyload" data-src="${sheet.thumbnail!}" src="${res_base_url!}/source/images/svg/loader/orange.progress-bar-stripe-loader.svg" onerror="imgError(this)">
                <#else>
                    <img
                            src="${settings.rimage_url!}?sheetid=${sheet.id}&type=url&itype=${settings.rimage_cover_itype!}<#if settings.rimage_cover_itype != 'image'>&id=${(settings.rimage_cover_id)!''}</#if>"
                            srcset="<#if settings.rimage_cover_lqip == 'loading'>${res_base_url!}/source/images/svg/loader/orange.progress-bar-stripe-loader.svg<#else>${settings.rimage_url!}?sheetid=${sheet.id}&type=url&itype=${settings.rimage_cover_itype!}<#if settings.rimage_cover_itype != 'image'>&id=${(settings.rimage_cover_id)!''}</#if>&th=150</#if>"
                            data-srcset="${settings.rimage_url!}?sheetid=${sheet.id}&type=url&itype=${settings.rimage_cover_itype!}<#if settings.rimage_cover_itype != 'image'>&id=${(settings.rimage_cover_id)!''}</#if>&th=640 640w,
                            ${settings.rimage_url!}?sheetid=${sheet.id}&type=url&itype=${settings.rimage_cover_itype!}<#if settings.rimage_cover_itype != 'image'>&id=${(settings.rimage_cover_id)!''}</#if>&th=960 960w,
                            ${settings.rimage_url!}?sheetid=${sheet.id}&type=url&itype=${settings.rimage_cover_itype!}<#if settings.rimage_cover_itype != 'image'>&id=${(settings.rimage_cover_id)!''}</#if>&th=1280 1280w,
                            ${settings.rimage_url!}?sheetid=${sheet.id}&type=url&itype=${settings.rimage_cover_itype!}<#if settings.rimage_cover_itype != 'image'>&id=${(settings.rimage_cover_id)!''}</#if> 1440w"
                            data-sizes="auto"
                            class="lazyload<#if settings.rimage_cover_lqip == 'lowquality'> blur-up</#if>" />
                </#if>
            </div>
            <header class="pattern-header">
                <h1 class="entry-title">${sheet.title!}</h1>
            </header>
        </div>
    <#else>
        <div class="blank"></div>
        <header class="entry-header">
            <h1 class="entry-title">
                <#if options.links_title?default("")?trim?length gt 1>
                    <span>${options.links_title}</span>
                <#else>
                    <span class="i18n" data-iname="page.links.title"></span>
                </#if>
            </h1>
        </header><!-- .entry-header -->
        <style>
            .toc-container {
                top: 210px;
            }
        </style>
    </#if>
</@header>
<article>
    <div class="sheet-content">
        <div id="siteTrend" style="width: auto;height: 400px">
        </div>
        <hr />
        <div id="siteArea" style="width: auto;height: 400px">
        </div>
        <hr />
        <div id="siteSource" style="width: auto;height: 700px">
        </div>
       <hr />
    </div>
</article>
<#if (metas.toc?boolean)!true>
    <div class="toc-container">
        <div class="toc"></div>
    </div>
</#if>
<#include "footer.ftl">
<@footer />
<script>
    var siteTrend;
    var siteArea;
    var siteSource;
    $.ajax({
        url: "https://blog.chenmx.net/baidu/siteTrend",
        type: "GET",
        contentType: "application/json",
        dataType: "json",
        async: false,
        success: function (response) {
            siteTrend = response.data;
        }
    });
    $.ajax({
        url: "https://blog.chenmx.net/baidu/siteArea",
        type: "GET",
        contentType: "application/json",
        dataType: "json",
        async: false,
        success: function (response) {
            siteArea = response.data;
        }
    })

    $.ajax({
        url: "https://blog.chenmx.net/baidu/siteSource",
        type: "GET",
        contentType: "application/json",
        dataType: "json",
        async: false,
        success: function (response) {
            siteSource = response.data;
            siteSource.series[0].data[3].selected=true
            siteSource.series[0].label = {
                position: 'inner',
                fontSize: 14
            }
            siteSource.series[0]. radius=[0, '30%'];
            siteSource.series[1]. radius=['45%', '60%'];
            siteSource.series[1].label ={
                formatter: '{a|{a}}{abg|}\n{hr|}\n  {b|{b}：}{c}  {per|{d}%}  ',
                backgroundColor: '#F6F8FC',
                borderColor: '#8C8D8E',
                borderWidth: 1,
                borderRadius: 4,

                rich: {
                    a: {
                        color: '#6E7079',
                        lineHeight: 22,
                        align: 'center'
                    },
                    hr: {
                        borderColor: '#8C8D8E',
                        width: '100%',
                        borderWidth: 1,
                        height: 0
                    },
                    b: {
                        color: '#4C5058',
                        fontSize: 14,
                        fontWeight: 'bold',
                        lineHeight: 33
                    },
                    per: {
                        color: '#fff',
                        backgroundColor: '#4C5058',
                        padding: [3, 4],
                        borderRadius: 4
                    }
                }
            }
        }
    })

    //访客数
    var chartDomTrend = document.getElementById('siteTrend');
    var myChartTrend = echarts.init(chartDomTrend);
    siteTrend && myChartTrend.setOption(siteTrend);

    //地域分布
    var chartDomArea = document.getElementById('siteArea');
    var myChartArea = echarts.init(chartDomArea);
    siteArea && myChartArea.setOption(siteArea);

    //访问来源
    console.log(siteSource)
    debugger
    var chartDomSource = document.getElementById('siteSource');
    var myChartSource = echarts.init(chartDomSource);
    siteSource && myChartSource.setOption(siteSource);
</script>
<style>
    /* 美化 hr 样式 */
    hr {
        position: relative;
        margin: 2rem auto;
        width: calc(100% - 4px);
        border: 2px dashed #a4d8fa;
        background: #fff;
    }

    hr {
        box-sizing: content-box;
        height: 0;
        overflow: visible;
    }

    hr:before {
        position: absolute;
        top: -10px;
        left: 5%;
        z-index: 1;
        color: #49b1f5;
        content: '\f0c4';
        font: normal normal normal 14px/1 FontAwesome;
        font-size: 20px;
        -webkit-transition: all 1s ease-in-out;
        -moz-transition: all 1s ease-in-out;
        -o-transition: all 1s ease-in-out;
        -ms-transition: all 1s ease-in-out;
        transition: all 1s ease-in-out;
    }

    hr:hover::before{
        left: 95%;
    }
    .note {
        position: relative;
        padding: 15px;
        margin-top: 10px;
        margin-bottom: 10px;
        border: initial;
        border-left: 3px solid #eee;
        background-color: #f9f9f9;
        border-radius: 3px;
        font-size: 1.5rem!important;
    }

    .note:not(.no-icon):before {
        position: absolute;
        font-family: FontAwesome;
        font-size: larger;
        top: 11px;
        left: 15px;
    }

    .note:not(.no-icon) {
        padding-left: 20px;
    }

    .note.info {
        background-color: #eef7fa;
        border-left-color: #428bca;
    }
</style>


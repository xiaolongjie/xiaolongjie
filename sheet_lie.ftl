<#--
    Template Name: links
-->
<#include "header.ftl">
<@header title="game">
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
        <div class="note info">
            <a style="display:flex;justify-content: left;align-content: center;"><span style="line-height:30px;"></span>
                <i class="fa fa-gamepad fa-2x fa-fw" aria-hidden="false" align="absmiddle" width="59px" height="30px"></i>
                <span style="line-height:35px;">&nbsp;&nbsp;&nbsp;休闲之际，来放松下吧OωO</span>
            </a>
        </div>
        <ul class="nav nav-pills nav-stacked">
            <li role="presentation" class="dropdown">
                <a href="https://yun.chenmx.net/mikutap/index.html" target="_blank">&nbsp;mikutap</a>
            </li>
            <li role="presentation" class="dropdown">
                <a href="https://yun.chenmx.net/battlecity/index.html" target="_blank">&nbsp;坦克大战</a>
            </li>
            <li  role="presentation" class="disabled"><a href="#">&nbsp;虚位以待</a></li>
        </ul>
       <hr />
    </div>
</article>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
<#if (metas.toc?boolean)!true>
    <div class="toc-container">
        <div class="toc"></div>
    </div>
</#if>
<#include "footer.ftl">
<@footer />
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


<#--
    Template Name: links
-->
<#include "header.ftl">
<@header title="air-conditioning">
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
    <div class="note info">
        我在此处安装了空调，您可以在此自由休憩。
    </div>
    <div class="sheet-content">
        <iframe width="100%" height="785px" frameborder="0" scrolling="no" src="https://yun.chenmx.net/build/index.html"></iframe>
    </div>

</article>
<#if (metas.toc?boolean)!true>
    <div class="toc-container">
        <div class="toc"></div>
    </div>
</#if>
<#include "footer.ftl">
<@footer />
<style>
    .note.info {
        background-color: #eef7fa;
        border-left-color: #428bca;
    }
    .note:not(.no-icon) {
        padding-left: 45px;
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
        font-size: 1.2rem!important;
    }
    .note.info:not(.no-icon):before {
        content: "\f05a";
        color: #428bca;
    }
    .note:not(.no-icon):before {
        position: absolute;
        font-family: FontAwesome;
        font-size: larger;
        top: 11px;
        left: 15px;
    }
</style>

"use strict";(("undefined"!=typeof self?self:global).webpackChunkclient_web=("undefined"!=typeof self?self:global).webpackChunkclient_web||[]).push([[387],{22578:(e,t,a)=>{a.d(t,{$:()=>p});var n=a(20657),s=a(67294),l=a.n(s),r=a(64593),d=a(8341),o=a(83693),i=a(76303),c=a(47886),u=a(24183);function m(e){return e.includes("Spotify")?e:`Spotify – ${e}`}const p=({children:e})=>{let t=m(e);(e=>{const{mainLandmarkRef:t}=(0,u.Oh)(),a=(0,c.k6)(),n=(0,s.useRef)(a.length<2);n.current=a.length<2,(0,s.useEffect)((()=>{const a=t.current;a&&!n.current&&e&&(a.setAttribute("aria-label",e),a.focus())}),[e,t])})(e);const a=(0,d.Y)(i.o9)===o.PO.PLAYING,p=(0,d.Y)((e=>null==e?void 0:e.item));return p&&a&&((0,o.G_)(p)?t=[p.name,p.artists.map((e=>e.name)).join(n.ag.getSeparator())].join(" · "):(0,o.iw)(p)?t=[p.name,p.show.name].join(" · "):(0,o.k6)(p)&&(t=m(n.ag.get("ad-formats.advertisement")))),l().createElement(r.q,{defaultTitle:"Spotify",defer:!1},l().createElement("title",null,t))}},70369:(e,t,a)=>{a.d(t,{$:()=>n.$});var n=a(22578)},54750:(e,t,a)=>{a.r(t),a.d(t,{default:()=>h});var n=a(67294),s=a.n(n),l=(a(45697),a(73012)),r=a(59713),d=a.n(r),o=a(7560),i=a(20657),c=a(23802),u=a(62890);class m extends n.PureComponent{render(){const{adsEnabled:e,downloadLink:t}=this.props;return s().createElement("section",{style:{height:"100%"}},s().createElement("div",{className:"download-page"+(e?" with-ad":"")},s().createElement("div",{className:"download-page-inner"},s().createElement("div",null,s().createElement("img",{alt:"",src:(0,c.g)("images/devices/mac.png")}),s().createElement(o.Z,{size:"medium",isCentered:!0},i.ag.get("download-page.header")),s().createElement(o.Z,{isCentered:!0,isSubheader:!0},i.ag.get("download-page.subtext")),s().createElement(u.z,{version:"primary",href:t,_blank:!0},i.ag.get("download-page.button"))))))}}d()(m,"defaultProps",{adsEnabled:!1});const p=m;var g=a(65858),f=a(31595),b=a(70369);class E extends n.PureComponent{render(){const{adsEnabled:e,isQuestFeatureAvailable:t}=this.props;return s().createElement(s().Fragment,null,s().createElement(b.$,null,i.ag.get("downloadPage.page-title")),s().createElement(f.H,{color:l.jN0}),s().createElement(p,{adsEnabled:e,downloadLink:"https://www.spotify.com/download",isQuestFeatureAvailable:t}))}}const h=(0,g.$j)((e=>({adsEnabled:e.session.productState&&1===parseInt(e.session.productState.ads,10),isQuestFeatureAvailable:e.features.quest&&["morpheus-qbe-1","morpheus-qbe-2"].includes(e.features.quest)})))(E)}}]);
//# sourceMappingURL=xpui-routes-download-page.js.map
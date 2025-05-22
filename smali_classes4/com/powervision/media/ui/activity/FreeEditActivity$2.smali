.class Lcom/powervision/media/ui/activity/FreeEditActivity$2;
.super Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;
.source "FreeEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/FreeEditActivity;->initMagicIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/activity/FreeEditActivity;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/FreeEditActivity;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity$2;->this$0:Lcom/powervision/media/ui/activity/FreeEditActivity;

    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity$2;->this$0:Lcom/powervision/media/ui/activity/FreeEditActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/FreeEditActivity;->access$000(Lcom/powervision/media/ui/activity/FreeEditActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity$2;->this$0:Lcom/powervision/media/ui/activity/FreeEditActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/FreeEditActivity;->access$000(Lcom/powervision/media/ui/activity/FreeEditActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIndicator(Landroid/content/Context;)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;
    .locals 3

    .line 193
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    const-string v1, "#3a75f2"

    .line 194
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    .line 195
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setMode(I)V

    return-object v0
.end method

.method public getTitleView(Landroid/content/Context;I)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;
    .locals 5

    .line 160
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;

    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;-><init>(Landroid/content/Context;)V

    .line 162
    new-instance v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ColorTransitionPagerTitleView;

    invoke-direct {v1, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ColorTransitionPagerTitleView;-><init>(Landroid/content/Context;)V

    .line 164
    iget-object v2, p0, Lcom/powervision/media/ui/activity/FreeEditActivity$2;->this$0:Lcom/powervision/media/ui/activity/FreeEditActivity;

    invoke-static {v2}, Lcom/powervision/media/ui/activity/FreeEditActivity;->access$000(Lcom/powervision/media/ui/activity/FreeEditActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "#999999"

    .line 165
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setNormalColor(I)V

    const-string v2, "#222222"

    .line 166
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setSelectedColor(I)V

    .line 167
    new-instance v2, Lcom/powervision/media/ui/activity/-$$Lambda$FreeEditActivity$2$c-qC7z-z7Idt2mSCrOmZ598r5eU;

    invoke-direct {v2, p0, p2}, Lcom/powervision/media/ui/activity/-$$Lambda$FreeEditActivity$2$c-qC7z-z7Idt2mSCrOmZ598r5eU;-><init>(Lcom/powervision/media/ui/activity/FreeEditActivity$2;I)V

    invoke-virtual {v1, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->setInnerPagerTitleView(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;)V

    .line 171
    iget-object v1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity$2;->this$0:Lcom/powervision/media/ui/activity/FreeEditActivity;

    invoke-static {v1}, Lcom/powervision/media/ui/activity/FreeEditActivity;->access$100(Lcom/powervision/media/ui/activity/FreeEditActivity;)[I

    move-result-object v1

    aget v1, v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {v0, v3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->setBadgeView(Landroid/view/View;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Lcom/powervision/media/R$layout;->media_simple_count_badge_layout:I

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 176
    iget-object v3, p0, Lcom/powervision/media/ui/activity/FreeEditActivity$2;->this$0:Lcom/powervision/media/ui/activity/FreeEditActivity;

    invoke-static {v3}, Lcom/powervision/media/ui/activity/FreeEditActivity;->access$100(Lcom/powervision/media/ui/activity/FreeEditActivity;)[I

    move-result-object v3

    aget p2, v3, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->setBadgeView(Landroid/view/View;)V

    .line 180
    new-instance p2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;

    sget-object v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->CONTENT_RIGHT:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    .line 181
    invoke-static {p1, v3, v4}, Lnet/lucode/hackware/magicindicator/buildins/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result p1

    neg-int p1, p1

    invoke-direct {p2, v1, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;-><init>(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;I)V

    .line 180
    invoke-virtual {v0, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->setXBadgeRule(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;)V

    .line 182
    new-instance p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;

    sget-object p2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->CONTENT_TOP:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    invoke-direct {p1, p2, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;-><init>(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;I)V

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->setYBadgeRule(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;)V

    .line 186
    :goto_0
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->setAutoCancelBadge(Z)V

    return-object v0
.end method

.method public synthetic lambda$getTitleView$0$FreeEditActivity$2(ILandroid/view/View;)V
    .locals 0

    .line 167
    iget-object p2, p0, Lcom/powervision/media/ui/activity/FreeEditActivity$2;->this$0:Lcom/powervision/media/ui/activity/FreeEditActivity;

    invoke-static {p2}, Lcom/powervision/media/ui/activity/FreeEditActivity;->access$200(Lcom/powervision/media/ui/activity/FreeEditActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

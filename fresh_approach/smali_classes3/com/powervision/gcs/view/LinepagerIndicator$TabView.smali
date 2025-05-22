.class Lcom/powervision/gcs/view/LinepagerIndicator$TabView;
.super Landroid/widget/RelativeLayout;
.source "LinepagerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/LinepagerIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private mTabText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/powervision/gcs/view/LinepagerIndicator;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/LinepagerIndicator;Landroid/content/Context;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    .line 288
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 289
    invoke-direct {p0}, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/LinepagerIndicator;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    .line 293
    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 294
    invoke-direct {p0}, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/LinepagerIndicator;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    .line 298
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 299
    invoke-direct {p0}, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 303
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->mTabText:Landroid/widget/TextView;

    .line 304
    invoke-virtual {p0}, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 305
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->mTabText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    invoke-static {v1}, Lcom/powervision/gcs/view/LinepagerIndicator;->access$400(Lcom/powervision/gcs/view/LinepagerIndicator;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 306
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->mTabText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 307
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->mTabText:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 308
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 309
    iget-object v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->mTabText:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->mTabText:Landroid/widget/TextView;

    return-object v0
.end method

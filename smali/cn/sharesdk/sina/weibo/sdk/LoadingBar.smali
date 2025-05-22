.class public Lcn/sharesdk/sina/weibo/sdk/LoadingBar;
.super Landroid/widget/TextView;
.source "LoadingBar.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar$1;-><init>(Lcn/sharesdk/sina/weibo/sdk/LoadingBar;)V

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->e:Ljava/lang/Runnable;

    .line 26
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/sdk/LoadingBar;)I
    .locals 0

    .line 11
    iget p0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a:I

    return p0
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/sdk/LoadingBar;I)I
    .locals 0

    .line 11
    iput p1, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a:I

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->d:Landroid/os/Handler;

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->c:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a()V

    return-void
.end method

.method private b()Landroid/graphics/Rect;
    .locals 5

    .line 57
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->getLeft()I

    move-result v0

    .line 58
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->getTop()I

    move-result v1

    .line 59
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a:I

    mul-int v3, v3, v4

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    .line 60
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->getBottom()I

    move-result v3

    .line 61
    new-instance v4, Landroid/graphics/Rect;

    sub-int/2addr v2, v0

    sub-int/2addr v3, v1

    const/4 v0, 0x0

    invoke-direct {v4, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method


# virtual methods
.method public a()V
    .locals 1

    const v0, -0xb26f02

    .line 46
    iput v0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->b:I

    return-void
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    .line 66
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->e:Ljava/lang/Runnable;

    const-wide/16 v1, 0x46

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    iput p1, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a:I

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->b()Landroid/graphics/Rect;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.class public Lcom/powervision/gcs/view/ship/TimeView;
.super Landroid/widget/LinearLayout;
.source "TimeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;
    }
.end annotation


# static fields
.field private static final START:I = 0x22

.field private static final STOP:I = 0x23


# instance fields
.field private handler:Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;

.field private mImageDot:Landroid/widget/ImageView;

.field private mTextTime:Landroid/widget/TextView;

.field private start:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/powervision/gcs/view/ship/TimeView;->start:I

    .line 62
    new-instance p1, Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;-><init>(Lcom/powervision/gcs/view/ship/TimeView;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/TimeView;->handler:Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 32
    iput p2, p0, Lcom/powervision/gcs/view/ship/TimeView;->start:I

    .line 62
    new-instance p2, Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;-><init>(Lcom/powervision/gcs/view/ship/TimeView;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/TimeView;->handler:Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;

    .line 41
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/TimeView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getTime(I)Ljava/lang/String;
    .locals 5

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 92
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "mm : ss"

    invoke-direct {p1, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 93
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$layout;->time_view_layout:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget p1, Lcom/powervision/gcs/R$id;->image_dot:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/TimeView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/TimeView;->mImageDot:Landroid/widget/ImageView;

    .line 47
    sget p1, Lcom/powervision/gcs/R$id;->text_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/TimeView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/TimeView;->mTextTime:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 65
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 66
    iget p1, p0, Lcom/powervision/gcs/view/ship/TimeView;->start:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/powervision/gcs/view/ship/TimeView;->start:I

    .line 67
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/TimeView;->mTextTime:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/TimeView;->getTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget p1, p0, Lcom/powervision/gcs/view/ship/TimeView;->start:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/TimeView;->mImageDot:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/TimeView;->mImageDot:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/TimeView;->handler:Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/TimeView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/TimeView;->handler:Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .locals 2

    const/16 v0, 0x8

    .line 83
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/TimeView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/powervision/gcs/view/ship/TimeView;->start:I

    .line 85
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/TimeView;->handler:Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;->removeMessages(I)V

    return-void
.end method

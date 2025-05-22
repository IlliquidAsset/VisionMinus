.class public Lcom/powervision/gcs/utils/CountDownButtonHelper;
.super Ljava/lang/Object;
.source "CountDownButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/utils/CountDownButtonHelper$OnFinishListener;
    }
.end annotation


# instance fields
.field private button:Landroid/widget/TextView;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private listener:Lcom/powervision/gcs/utils/CountDownButtonHelper$OnFinishListener;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;II)V
    .locals 9

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/powervision/gcs/utils/CountDownButtonHelper;->button:Landroid/widget/TextView;

    .line 35
    new-instance v8, Lcom/powervision/gcs/utils/CountDownButtonHelper$1;

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v2, p3

    mul-int/lit16 p4, p4, 0x3e8

    add-int/lit8 p4, p4, -0xa

    int-to-long v4, p4

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/powervision/gcs/utils/CountDownButtonHelper$1;-><init>(Lcom/powervision/gcs/utils/CountDownButtonHelper;JJLandroid/widget/TextView;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/powervision/gcs/utils/CountDownButtonHelper;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/utils/CountDownButtonHelper;)Lcom/powervision/gcs/utils/CountDownButtonHelper$OnFinishListener;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/powervision/gcs/utils/CountDownButtonHelper;->listener:Lcom/powervision/gcs/utils/CountDownButtonHelper$OnFinishListener;

    return-object p0
.end method


# virtual methods
.method public setOnFinishListener(Lcom/powervision/gcs/utils/CountDownButtonHelper$OnFinishListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/powervision/gcs/utils/CountDownButtonHelper;->listener:Lcom/powervision/gcs/utils/CountDownButtonHelper$OnFinishListener;

    return-void
.end method

.method public start()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/powervision/gcs/utils/CountDownButtonHelper;->button:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/powervision/gcs/utils/CountDownButtonHelper;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

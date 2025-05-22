.class Lcom/powervision/home/view/NeedCheckActiviteTextView$1$1;
.super Ljava/lang/Object;
.source "NeedCheckActiviteTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/view/NeedCheckActiviteTextView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/home/view/NeedCheckActiviteTextView$1;


# direct methods
.method constructor <init>(Lcom/powervision/home/view/NeedCheckActiviteTextView$1;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView$1$1;->this$1:Lcom/powervision/home/view/NeedCheckActiviteTextView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 64
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    invoke-static {}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getTheACode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    .line 67
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Common;->getActivationActivity()Landroid/app/Activity;

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView$1$1;->this$1:Lcom/powervision/home/view/NeedCheckActiviteTextView$1;

    iget-object p1, p1, Lcom/powervision/home/view/NeedCheckActiviteTextView$1;->this$0:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    iget v0, p1, Lcom/powervision/home/view/NeedCheckActiviteTextView;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/powervision/home/view/NeedCheckActiviteTextView;->count:I

    .line 71
    iget-object p1, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView$1$1;->this$1:Lcom/powervision/home/view/NeedCheckActiviteTextView$1;

    iget-object p1, p1, Lcom/powervision/home/view/NeedCheckActiviteTextView$1;->this$0:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    iget p1, p1, Lcom/powervision/home/view/NeedCheckActiviteTextView;->count:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 72
    invoke-static {}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/utils/NewActiviteUtil;->askTheCode()V

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView$1$1;->this$1:Lcom/powervision/home/view/NeedCheckActiviteTextView$1;

    iget-object p1, p1, Lcom/powervision/home/view/NeedCheckActiviteTextView$1;->this$0:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    invoke-virtual {p1}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->inOrswtich()V

    :cond_2
    :goto_0
    return-void
.end method

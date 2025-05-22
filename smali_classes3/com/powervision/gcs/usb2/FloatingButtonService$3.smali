.class Lcom/powervision/gcs/usb2/FloatingButtonService$3;
.super Ljava/lang/Object;
.source "FloatingButtonService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/usb2/FloatingButtonService;->setText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/FloatingButtonService;Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$3;->this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;

    iput-object p2, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$3;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$3;->this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/FloatingButtonService;->access$100(Lcom/powervision/gcs/usb2/FloatingButtonService;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$3;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

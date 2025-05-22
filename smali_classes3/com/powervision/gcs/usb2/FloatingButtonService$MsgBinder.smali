.class public Lcom/powervision/gcs/usb2/FloatingButtonService$MsgBinder;
.super Landroid/os/Binder;
.source "FloatingButtonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/FloatingButtonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/usb2/FloatingButtonService;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$MsgBinder;->this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/powervision/gcs/usb2/FloatingButtonService;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$MsgBinder;->this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;

    return-object v0
.end method

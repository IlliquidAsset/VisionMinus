.class Lcom/powervision/livestreaming/client/CallbackDelivery$1;
.super Ljava/lang/Object;
.source "CallbackDelivery.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/livestreaming/client/CallbackDelivery;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/livestreaming/client/CallbackDelivery;


# direct methods
.method constructor <init>(Lcom/powervision/livestreaming/client/CallbackDelivery;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/powervision/livestreaming/client/CallbackDelivery$1;->this$0:Lcom/powervision/livestreaming/client/CallbackDelivery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/powervision/livestreaming/client/CallbackDelivery$1;->this$0:Lcom/powervision/livestreaming/client/CallbackDelivery;

    invoke-static {v0}, Lcom/powervision/livestreaming/client/CallbackDelivery;->access$000(Lcom/powervision/livestreaming/client/CallbackDelivery;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class Lcom/powervision/base/views/LoadingProgressBar$1;
.super Ljava/lang/Object;
.source "LoadingProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/views/LoadingProgressBar;->show(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/views/LoadingProgressBar;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/LoadingProgressBar;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/powervision/base/views/LoadingProgressBar$1;->this$0:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/powervision/base/views/LoadingProgressBar$1;->this$0:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/powervision/base/views/LoadingProgressBar$1;->this$0:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    :cond_0
    return-void
.end method

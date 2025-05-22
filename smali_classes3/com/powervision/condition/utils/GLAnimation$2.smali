.class Lcom/powervision/condition/utils/GLAnimation$2;
.super Ljava/lang/Object;
.source "GLAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/utils/GLAnimation;->setListenerHandler(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/condition/utils/GLAnimation;


# direct methods
.method constructor <init>(Lcom/powervision/condition/utils/GLAnimation;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/powervision/condition/utils/GLAnimation$2;->this$0:Lcom/powervision/condition/utils/GLAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/powervision/condition/utils/GLAnimation$2;->this$0:Lcom/powervision/condition/utils/GLAnimation;

    iget-object v0, v0, Lcom/powervision/condition/utils/GLAnimation;->mListener:Lcom/powervision/condition/utils/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/powervision/condition/utils/GLAnimation$2;->this$0:Lcom/powervision/condition/utils/GLAnimation;

    iget-object v0, v0, Lcom/powervision/condition/utils/GLAnimation;->mListener:Lcom/powervision/condition/utils/Animation$AnimationListener;

    invoke-interface {v0}, Lcom/powervision/condition/utils/Animation$AnimationListener;->onAnimationEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

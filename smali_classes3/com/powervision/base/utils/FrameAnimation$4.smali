.class Lcom/powervision/base/utils/FrameAnimation$4;
.super Ljava/lang/Object;
.source "FrameAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/utils/FrameAnimation;->play(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/utils/FrameAnimation;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/powervision/base/utils/FrameAnimation;I)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    iput p2, p0, Lcom/powervision/base/utils/FrameAnimation$4;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$000(Lcom/powervision/base/utils/FrameAnimation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$000(Lcom/powervision/base/utils/FrameAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/powervision/base/utils/FrameAnimation;->access$102(Lcom/powervision/base/utils/FrameAnimation;I)I

    .line 246
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    iget v1, p0, Lcom/powervision/base/utils/FrameAnimation$4;->val$i:I

    invoke-static {v0, v1}, Lcom/powervision/base/utils/FrameAnimation;->access$202(Lcom/powervision/base/utils/FrameAnimation;I)I

    :cond_0
    return-void

    .line 251
    :cond_1
    iget v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->val$i:I

    if-nez v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$300(Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$300(Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/base/utils/FrameAnimation$AnimationListener;->onAnimationStart()V

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$500(Lcom/powervision/base/utils/FrameAnimation;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v1}, Lcom/powervision/base/utils/FrameAnimation;->access$400(Lcom/powervision/base/utils/FrameAnimation;)[I

    move-result-object v1

    iget v2, p0, Lcom/powervision/base/utils/FrameAnimation$4;->val$i:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->val$i:I

    iget-object v1, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v1}, Lcom/powervision/base/utils/FrameAnimation;->access$600(Lcom/powervision/base/utils/FrameAnimation;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 259
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$1000(Lcom/powervision/base/utils/FrameAnimation;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$300(Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$300(Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/base/utils/FrameAnimation$AnimationListener;->onAnimationRepeat()V

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/base/utils/FrameAnimation;->access$1200(Lcom/powervision/base/utils/FrameAnimation;I)V

    goto :goto_0

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$300(Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 266
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$300(Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/base/utils/FrameAnimation$AnimationListener;->onAnimationEnd()V

    goto :goto_0

    .line 272
    :cond_5
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$4;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    iget v1, p0, Lcom/powervision/base/utils/FrameAnimation$4;->val$i:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/FrameAnimation;->access$1200(Lcom/powervision/base/utils/FrameAnimation;I)V

    :cond_6
    :goto_0
    return-void
.end method

.class Lcom/powervision/base/utils/FrameAnimation$2;
.super Ljava/lang/Object;
.source "FrameAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/utils/FrameAnimation;->playAndDelay(I)V
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

    .line 165
    iput-object p1, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    iput p2, p0, Lcom/powervision/base/utils/FrameAnimation$2;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$000(Lcom/powervision/base/utils/FrameAnimation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$000(Lcom/powervision/base/utils/FrameAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/powervision/base/utils/FrameAnimation;->access$102(Lcom/powervision/base/utils/FrameAnimation;I)I

    .line 172
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    iget v1, p0, Lcom/powervision/base/utils/FrameAnimation$2;->val$i:I

    invoke-static {v0, v1}, Lcom/powervision/base/utils/FrameAnimation;->access$202(Lcom/powervision/base/utils/FrameAnimation;I)I

    :cond_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/base/utils/FrameAnimation;->access$702(Lcom/powervision/base/utils/FrameAnimation;Z)Z

    .line 178
    iget v0, p0, Lcom/powervision/base/utils/FrameAnimation$2;->val$i:I

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$300(Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$300(Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/base/utils/FrameAnimation$AnimationListener;->onAnimationStart()V

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$500(Lcom/powervision/base/utils/FrameAnimation;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v2}, Lcom/powervision/base/utils/FrameAnimation;->access$400(Lcom/powervision/base/utils/FrameAnimation;)[I

    move-result-object v2

    iget v3, p0, Lcom/powervision/base/utils/FrameAnimation$2;->val$i:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget v0, p0, Lcom/powervision/base/utils/FrameAnimation$2;->val$i:I

    iget-object v2, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v2}, Lcom/powervision/base/utils/FrameAnimation;->access$600(Lcom/powervision/base/utils/FrameAnimation;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    .line 185
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$300(Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0}, Lcom/powervision/base/utils/FrameAnimation;->access$300(Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/base/utils/FrameAnimation$AnimationListener;->onAnimationRepeat()V

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0, v3}, Lcom/powervision/base/utils/FrameAnimation;->access$702(Lcom/powervision/base/utils/FrameAnimation;Z)Z

    .line 189
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    invoke-static {v0, v1}, Lcom/powervision/base/utils/FrameAnimation;->access$900(Lcom/powervision/base/utils/FrameAnimation;I)V

    goto :goto_0

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation$2;->this$0:Lcom/powervision/base/utils/FrameAnimation;

    iget v1, p0, Lcom/powervision/base/utils/FrameAnimation$2;->val$i:I

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/powervision/base/utils/FrameAnimation;->access$900(Lcom/powervision/base/utils/FrameAnimation;I)V

    :goto_0
    return-void
.end method

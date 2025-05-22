.class Lcom/powervision/gcs/Texture/GLESTVThread$1;
.super Ljava/lang/Object;
.source "GLESTVThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/Texture/GLESTVThread;->onSurfaceChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/Texture/GLESTVThread;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/Texture/GLESTVThread;II)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/powervision/gcs/Texture/GLESTVThread$1;->this$0:Lcom/powervision/gcs/Texture/GLESTVThread;

    iput p2, p0, Lcom/powervision/gcs/Texture/GLESTVThread$1;->val$width:I

    iput p3, p0, Lcom/powervision/gcs/Texture/GLESTVThread$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread$1;->this$0:Lcom/powervision/gcs/Texture/GLESTVThread;

    invoke-static {v0}, Lcom/powervision/gcs/Texture/GLESTVThread;->access$000(Lcom/powervision/gcs/Texture/GLESTVThread;)Lcom/powervision/gcs/Texture/IGLESRenderer;

    move-result-object v0

    iget v1, p0, Lcom/powervision/gcs/Texture/GLESTVThread$1;->val$width:I

    iget v2, p0, Lcom/powervision/gcs/Texture/GLESTVThread$1;->val$height:I

    invoke-interface {v0, v1, v2}, Lcom/powervision/gcs/Texture/IGLESRenderer;->onSurfaceChanged(II)V

    return-void
.end method

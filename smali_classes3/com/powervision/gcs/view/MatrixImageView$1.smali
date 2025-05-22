.class Lcom/powervision/gcs/view/MatrixImageView$1;
.super Ljava/lang/Object;
.source "MatrixImageView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/MatrixImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/MatrixImageView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/MatrixImageView;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView$1;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$1;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v0}, Lcom/powervision/gcs/view/MatrixImageView;->access$000(Lcom/powervision/gcs/view/MatrixImageView;)V

    .line 86
    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$1;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/MatrixImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    return v0
.end method

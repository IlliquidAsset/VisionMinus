.class Lcom/powervision/gcs/view/SonarWindowView$1;
.super Ljava/lang/Object;
.source "SonarWindowView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/SonarWindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/SonarWindowView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarWindowView;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$1;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$1;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$000(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/view/FishImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/FishImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 170
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$1;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    new-instance v1, Lcom/powervision/gcs/view/SonarWindowView$1$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/SonarWindowView$1$1;-><init>(Lcom/powervision/gcs/view/SonarWindowView$1;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/gcs/view/SonarWindowView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    return v0
.end method

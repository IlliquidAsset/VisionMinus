.class Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FishPositionView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/FishPositionView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/view/ship/FishPositionView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;Lcom/powervision/gcs/view/ship/FishPositionView;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding$2;->this$0:Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding$2;->val$target:Lcom/powervision/gcs/view/ship/FishPositionView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding$2;->val$target:Lcom/powervision/gcs/view/ship/FishPositionView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/ship/FishPositionView;->onClick(Landroid/view/View;)V

    return-void
.end method

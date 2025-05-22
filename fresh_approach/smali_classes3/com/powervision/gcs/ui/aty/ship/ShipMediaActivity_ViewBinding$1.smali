.class Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ShipMediaActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding$1;->val$target:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding$1;->val$target:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->tv_select()V

    return-void
.end method

.class Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding$2;
.super Ljava/lang/Object;
.source "ShipSonarSetFragment_ViewBinding.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding$2;->val$target:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding$2;->val$target:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->auto_deep_toggle(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

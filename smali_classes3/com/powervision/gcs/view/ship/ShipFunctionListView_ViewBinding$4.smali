.class Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ShipFunctionListView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionListView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/view/ship/ShipFunctionListView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionListView;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$4;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$4;->val$target:Lcom/powervision/gcs/view/ship/ShipFunctionListView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$4;->val$target:Lcom/powervision/gcs/view/ship/ShipFunctionListView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->ship_function_list_airline_sche()V

    return-void
.end method

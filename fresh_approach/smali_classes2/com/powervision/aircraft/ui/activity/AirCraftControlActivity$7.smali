.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$7;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->updateBatteryInfo(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$batteryVersion:I

.field final synthetic val$dateOfManufacture:Ljava/lang/String;

.field final synthetic val$snNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1178
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$7;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$7;->val$snNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$7;->val$dateOfManufacture:Ljava/lang/String;

    iput p4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$7;->val$batteryVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1181
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$7;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$7;->val$snNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1182
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$7;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$7;->val$dateOfManufacture:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1183
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$7;->val$batteryVersion:I

    shr-int/lit8 v1, v0, 0x8

    shr-int/lit8 v2, v0, 0x4

    and-int/lit8 v2, v2, 0xf

    and-int/lit8 v0, v0, 0xf

    .line 1186
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1187
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "."

    .line 1188
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1189
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1190
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1191
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1192
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$7;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1193
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$7;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    return-void
.end method

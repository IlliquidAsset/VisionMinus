.class Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$2;
.super Ljava/lang/Object;
.source "ShipInterestDbUtil.java"

# interfaces
.implements Lcom/powervision/gcs/utils/ship/DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;->queryAllInterest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/powervision/gcs/utils/ship/DbCallback<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$2;->this$0:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onQuery(Landroid/database/Cursor;)V
    .locals 7

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_0

    .line 75
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Lcom/powervision/gcs/model/ship/ShipInterestModel;

    invoke-direct {v1}, Lcom/powervision/gcs/model/ship/ShipInterestModel;-><init>()V

    const-string v2, "interest_address"

    .line 77
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "interest_latlng"

    .line 78
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "interest_desc"

    .line 79
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    .line 80
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "imgfile"

    .line 81
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-virtual {v1, v2}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->setInterestAddress(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v3}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->setInterestLatlng(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v4}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->setInterestDesc(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v5}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->setType(I)V

    .line 86
    invoke-virtual {v1, v6}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->setImgFile(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$2;->this$0:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;

    invoke-static {p1}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;->access$000(Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;)Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$2;->this$0:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;

    invoke-static {p1}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;->access$000(Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;)Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;->onQueryInterest(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onQuery(Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$2;->onQuery(Landroid/database/Cursor;)V

    return-void
.end method

.class public Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;
.super Ljava/lang/Object;
.source "ShipInterestDbUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;
    }
.end annotation


# static fields
.field private static mCreator:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;


# instance fields
.field private mListener:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;)Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;->mListener:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;

    return-object p0
.end method

.method public static getInstance()Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;
    .locals 1

    .line 25
    sget-object v0, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;->mCreator:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;-><init>()V

    sput-object v0, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;->mCreator:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;

    .line 28
    :cond_0
    sget-object v0, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;->mCreator:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;

    return-object v0
.end method


# virtual methods
.method public deleteInterestByDesc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 140
    invoke-static {}, Lcom/powervision/gcs/utils/ship/DbHelper;->getInstance()Lcom/powervision/gcs/utils/ship/DbHelper;

    move-result-object p1

    invoke-static {}, Lcom/powervision/gcs/model/ship/SubscribeSourceBean;->deleteByLatlng()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "interest"

    invoke-virtual {p1, p3, p2, v0}, Lcom/powervision/gcs/utils/ship/DbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public insertInterest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 39
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "interest_desc"

    .line 40
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "interest_address"

    .line 41
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "interest_latlng"

    .line 42
    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "imgfile"

    .line 44
    invoke-virtual {v0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/powervision/gcs/utils/ship/DbHelper;->getInstance()Lcom/powervision/gcs/utils/ship/DbHelper;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$1;-><init>(Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;)V

    const-string p3, "interest"

    invoke-virtual {p1, p3, v0, p2}, Lcom/powervision/gcs/utils/ship/DbHelper;->insert(Ljava/lang/String;Landroid/content/ContentValues;Lcom/powervision/gcs/utils/ship/DbCallback;)V

    return-void
.end method

.method public queryAllInterest()V
    .locals 3

    .line 70
    invoke-static {}, Lcom/powervision/gcs/utils/ship/DbHelper;->getInstance()Lcom/powervision/gcs/utils/ship/DbHelper;

    move-result-object v0

    invoke-static {}, Lcom/powervision/gcs/model/ship/SubscribeSourceBean;->queryInterestAll()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$2;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$2;-><init>(Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;)V

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/DbHelper;->query(Ljava/lang/String;Lcom/powervision/gcs/utils/ship/DbCallback;)V

    return-void
.end method

.method public setQueryInterestListener(Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;->mListener:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;

    return-void
.end method

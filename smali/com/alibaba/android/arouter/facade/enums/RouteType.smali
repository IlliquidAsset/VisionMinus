.class public final enum Lcom/alibaba/android/arouter/facade/enums/RouteType;
.super Ljava/lang/Enum;
.source "RouteType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/arouter/facade/enums/RouteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum ACTIVITY:Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum BOARDCAST:Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum CONTENT_PROVIDER:Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum FRAGMENT:Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum METHOD:Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum PROVIDER:Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum SERVICE:Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum UNKNOWN:Lcom/alibaba/android/arouter/facade/enums/RouteType;


# instance fields
.field className:Ljava/lang/String;

.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 11
    new-instance v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const-string v1, "ACTIVITY"

    const/4 v2, 0x0

    const-string v3, "android.app.Activity"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->ACTIVITY:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    .line 12
    new-instance v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const-string v1, "SERVICE"

    const/4 v3, 0x1

    const-string v4, "android.app.Service"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->SERVICE:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    .line 13
    new-instance v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const-string v1, "PROVIDER"

    const/4 v4, 0x2

    const-string v5, "com.alibaba.android.arouter.facade.template.IProvider"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->PROVIDER:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    .line 14
    new-instance v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const-string v1, "CONTENT_PROVIDER"

    const/4 v5, 0x3

    const/4 v6, -0x1

    const-string v7, "android.app.ContentProvider"

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->CONTENT_PROVIDER:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    .line 15
    new-instance v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const-string v1, "BOARDCAST"

    const/4 v7, 0x4

    const-string v8, ""

    invoke-direct {v0, v1, v7, v6, v8}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->BOARDCAST:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    .line 16
    new-instance v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const-string v1, "METHOD"

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v6, v8}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->METHOD:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    .line 17
    new-instance v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const-string v1, "FRAGMENT"

    const/4 v8, 0x6

    const-string v10, "android.app.Fragment"

    invoke-direct {v0, v1, v8, v6, v10}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->FRAGMENT:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    .line 18
    new-instance v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const-string v1, "UNKNOWN"

    const/4 v10, 0x7

    const-string v11, "Unknown route type"

    invoke-direct {v0, v1, v10, v6, v11}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->UNKNOWN:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/alibaba/android/arouter/facade/enums/RouteType;

    .line 10
    sget-object v6, Lcom/alibaba/android/arouter/facade/enums/RouteType;->ACTIVITY:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/alibaba/android/arouter/facade/enums/RouteType;->SERVICE:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/android/arouter/facade/enums/RouteType;->PROVIDER:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/alibaba/android/arouter/facade/enums/RouteType;->CONTENT_PROVIDER:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/alibaba/android/arouter/facade/enums/RouteType;->BOARDCAST:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/alibaba/android/arouter/facade/enums/RouteType;->METHOD:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/alibaba/android/arouter/facade/enums/RouteType;->FRAGMENT:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    aput-object v2, v1, v8

    aput-object v0, v1, v10

    sput-object v1, Lcom/alibaba/android/arouter/facade/enums/RouteType;->$VALUES:[Lcom/alibaba/android/arouter/facade/enums/RouteType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->id:I

    .line 43
    iput-object p4, p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->className:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/enums/RouteType;
    .locals 5

    .line 47
    invoke-static {}, Lcom/alibaba/android/arouter/facade/enums/RouteType;->values()[Lcom/alibaba/android/arouter/facade/enums/RouteType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 48
    invoke-virtual {v3}, Lcom/alibaba/android/arouter/facade/enums/RouteType;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_1
    sget-object p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->UNKNOWN:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/enums/RouteType;
    .locals 1

    .line 10
    const-class v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/arouter/facade/enums/RouteType;
    .locals 1

    .line 10
    sget-object v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->$VALUES:[Lcom/alibaba/android/arouter/facade/enums/RouteType;

    invoke-virtual {v0}, [Lcom/alibaba/android/arouter/facade/enums/RouteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/arouter/facade/enums/RouteType;

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->id:I

    return v0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/enums/RouteType;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->className:Ljava/lang/String;

    return-object p0
.end method

.method public setId(I)Lcom/alibaba/android/arouter/facade/enums/RouteType;
    .locals 0

    .line 28
    iput p1, p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->id:I

    return-object p0
.end method

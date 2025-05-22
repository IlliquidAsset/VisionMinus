.class final enum Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;
.super Ljava/lang/Enum;
.source "AdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/adapter/AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ITEM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

.field public static final enum FOOTER:Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

.field public static final enum HEADER:Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

.field public static final enum NORMAL:Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    const-string v1, "HEADER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->HEADER:Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    .line 15
    new-instance v0, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    const-string v1, "FOOTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->FOOTER:Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    .line 16
    new-instance v0, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    const-string v1, "NORMAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->NORMAL:Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    .line 13
    sget-object v5, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->HEADER:Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    aput-object v5, v1, v2

    sget-object v2, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->FOOTER:Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->$VALUES:[Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;
    .locals 1

    .line 13
    const-class v0, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;
    .locals 1

    .line 13
    sget-object v0, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->$VALUES:[Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    invoke-virtual {v0}, [Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    return-object v0
.end method

.class public final enum Lcom/univocity/parsers/common/processor/RowPlacement;
.super Ljava/lang/Enum;
.source "RowPlacement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/univocity/parsers/common/processor/RowPlacement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/univocity/parsers/common/processor/RowPlacement;

.field public static final enum BOTTOM:Lcom/univocity/parsers/common/processor/RowPlacement;

.field public static final enum TOP:Lcom/univocity/parsers/common/processor/RowPlacement;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/univocity/parsers/common/processor/RowPlacement;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/univocity/parsers/common/processor/RowPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/univocity/parsers/common/processor/RowPlacement;->TOP:Lcom/univocity/parsers/common/processor/RowPlacement;

    .line 32
    new-instance v0, Lcom/univocity/parsers/common/processor/RowPlacement;

    const-string v1, "BOTTOM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/univocity/parsers/common/processor/RowPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/univocity/parsers/common/processor/RowPlacement;->BOTTOM:Lcom/univocity/parsers/common/processor/RowPlacement;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/univocity/parsers/common/processor/RowPlacement;

    .line 24
    sget-object v4, Lcom/univocity/parsers/common/processor/RowPlacement;->TOP:Lcom/univocity/parsers/common/processor/RowPlacement;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/univocity/parsers/common/processor/RowPlacement;->$VALUES:[Lcom/univocity/parsers/common/processor/RowPlacement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/univocity/parsers/common/processor/RowPlacement;
    .locals 1

    .line 24
    const-class v0, Lcom/univocity/parsers/common/processor/RowPlacement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/univocity/parsers/common/processor/RowPlacement;

    return-object p0
.end method

.method public static values()[Lcom/univocity/parsers/common/processor/RowPlacement;
    .locals 1

    .line 24
    sget-object v0, Lcom/univocity/parsers/common/processor/RowPlacement;->$VALUES:[Lcom/univocity/parsers/common/processor/RowPlacement;

    invoke-virtual {v0}, [Lcom/univocity/parsers/common/processor/RowPlacement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/common/processor/RowPlacement;

    return-object v0
.end method

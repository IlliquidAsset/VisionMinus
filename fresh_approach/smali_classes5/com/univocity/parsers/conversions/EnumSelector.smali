.class public final enum Lcom/univocity/parsers/conversions/EnumSelector;
.super Ljava/lang/Enum;
.source "EnumSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/univocity/parsers/conversions/EnumSelector;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/univocity/parsers/conversions/EnumSelector;

.field public static final enum CUSTOM_FIELD:Lcom/univocity/parsers/conversions/EnumSelector;

.field public static final enum CUSTOM_METHOD:Lcom/univocity/parsers/conversions/EnumSelector;

.field public static final enum NAME:Lcom/univocity/parsers/conversions/EnumSelector;

.field public static final enum ORDINAL:Lcom/univocity/parsers/conversions/EnumSelector;

.field public static final enum STRING:Lcom/univocity/parsers/conversions/EnumSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 30
    new-instance v0, Lcom/univocity/parsers/conversions/EnumSelector;

    const-string v1, "ORDINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/univocity/parsers/conversions/EnumSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/univocity/parsers/conversions/EnumSelector;->ORDINAL:Lcom/univocity/parsers/conversions/EnumSelector;

    .line 35
    new-instance v0, Lcom/univocity/parsers/conversions/EnumSelector;

    const-string v1, "NAME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/univocity/parsers/conversions/EnumSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/univocity/parsers/conversions/EnumSelector;->NAME:Lcom/univocity/parsers/conversions/EnumSelector;

    .line 40
    new-instance v0, Lcom/univocity/parsers/conversions/EnumSelector;

    const-string v1, "STRING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/univocity/parsers/conversions/EnumSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/univocity/parsers/conversions/EnumSelector;->STRING:Lcom/univocity/parsers/conversions/EnumSelector;

    .line 45
    new-instance v0, Lcom/univocity/parsers/conversions/EnumSelector;

    const-string v1, "CUSTOM_FIELD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/univocity/parsers/conversions/EnumSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/univocity/parsers/conversions/EnumSelector;->CUSTOM_FIELD:Lcom/univocity/parsers/conversions/EnumSelector;

    .line 50
    new-instance v0, Lcom/univocity/parsers/conversions/EnumSelector;

    const-string v1, "CUSTOM_METHOD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/univocity/parsers/conversions/EnumSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/univocity/parsers/conversions/EnumSelector;->CUSTOM_METHOD:Lcom/univocity/parsers/conversions/EnumSelector;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/univocity/parsers/conversions/EnumSelector;

    .line 25
    sget-object v7, Lcom/univocity/parsers/conversions/EnumSelector;->ORDINAL:Lcom/univocity/parsers/conversions/EnumSelector;

    aput-object v7, v1, v2

    sget-object v2, Lcom/univocity/parsers/conversions/EnumSelector;->NAME:Lcom/univocity/parsers/conversions/EnumSelector;

    aput-object v2, v1, v3

    sget-object v2, Lcom/univocity/parsers/conversions/EnumSelector;->STRING:Lcom/univocity/parsers/conversions/EnumSelector;

    aput-object v2, v1, v4

    sget-object v2, Lcom/univocity/parsers/conversions/EnumSelector;->CUSTOM_FIELD:Lcom/univocity/parsers/conversions/EnumSelector;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/univocity/parsers/conversions/EnumSelector;->$VALUES:[Lcom/univocity/parsers/conversions/EnumSelector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/univocity/parsers/conversions/EnumSelector;
    .locals 1

    .line 25
    const-class v0, Lcom/univocity/parsers/conversions/EnumSelector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/univocity/parsers/conversions/EnumSelector;

    return-object p0
.end method

.method public static values()[Lcom/univocity/parsers/conversions/EnumSelector;
    .locals 1

    .line 25
    sget-object v0, Lcom/univocity/parsers/conversions/EnumSelector;->$VALUES:[Lcom/univocity/parsers/conversions/EnumSelector;

    invoke-virtual {v0}, [Lcom/univocity/parsers/conversions/EnumSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/conversions/EnumSelector;

    return-object v0
.end method

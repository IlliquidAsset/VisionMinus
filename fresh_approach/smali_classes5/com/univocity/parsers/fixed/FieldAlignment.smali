.class public final enum Lcom/univocity/parsers/fixed/FieldAlignment;
.super Ljava/lang/Enum;
.source "FieldAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/univocity/parsers/fixed/FieldAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/univocity/parsers/fixed/FieldAlignment;

.field public static final enum CENTER:Lcom/univocity/parsers/fixed/FieldAlignment;

.field public static final enum LEFT:Lcom/univocity/parsers/fixed/FieldAlignment;

.field public static final enum RIGHT:Lcom/univocity/parsers/fixed/FieldAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 28
    new-instance v0, Lcom/univocity/parsers/fixed/FieldAlignment;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/univocity/parsers/fixed/FieldAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/univocity/parsers/fixed/FieldAlignment;->LEFT:Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 33
    new-instance v0, Lcom/univocity/parsers/fixed/FieldAlignment;

    const-string v1, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/univocity/parsers/fixed/FieldAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/univocity/parsers/fixed/FieldAlignment;->CENTER:Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 38
    new-instance v0, Lcom/univocity/parsers/fixed/FieldAlignment;

    const-string v1, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/univocity/parsers/fixed/FieldAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/univocity/parsers/fixed/FieldAlignment;->RIGHT:Lcom/univocity/parsers/fixed/FieldAlignment;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 24
    sget-object v5, Lcom/univocity/parsers/fixed/FieldAlignment;->LEFT:Lcom/univocity/parsers/fixed/FieldAlignment;

    aput-object v5, v1, v2

    sget-object v2, Lcom/univocity/parsers/fixed/FieldAlignment;->CENTER:Lcom/univocity/parsers/fixed/FieldAlignment;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/univocity/parsers/fixed/FieldAlignment;->$VALUES:[Lcom/univocity/parsers/fixed/FieldAlignment;

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

.method public static valueOf(Ljava/lang/String;)Lcom/univocity/parsers/fixed/FieldAlignment;
    .locals 1

    .line 24
    const-class v0, Lcom/univocity/parsers/fixed/FieldAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/univocity/parsers/fixed/FieldAlignment;

    return-object p0
.end method

.method public static values()[Lcom/univocity/parsers/fixed/FieldAlignment;
    .locals 1

    .line 24
    sget-object v0, Lcom/univocity/parsers/fixed/FieldAlignment;->$VALUES:[Lcom/univocity/parsers/fixed/FieldAlignment;

    invoke-virtual {v0}, [Lcom/univocity/parsers/fixed/FieldAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/fixed/FieldAlignment;

    return-object v0
.end method


# virtual methods
.method public calculatePadding(II)I
    .locals 2

    .line 47
    sget-object v0, Lcom/univocity/parsers/fixed/FieldAlignment;->LEFT:Lcom/univocity/parsers/fixed/FieldAlignment;

    if-eq p0, v0, :cond_3

    if-gt p1, p2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lcom/univocity/parsers/fixed/FieldAlignment;->RIGHT:Lcom/univocity/parsers/fixed/FieldAlignment;

    if-ne p0, v0, :cond_1

    sub-int/2addr p1, p2

    return p1

    .line 55
    :cond_1
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    add-int/2addr p2, v0

    if-le p2, p1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

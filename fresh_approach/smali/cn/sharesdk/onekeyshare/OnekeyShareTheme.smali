.class public final enum Lcn/sharesdk/onekeyshare/OnekeyShareTheme;
.super Ljava/lang/Enum;
.source "OnekeyShareTheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/sharesdk/onekeyshare/OnekeyShareTheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

.field public static final enum CLASSIC:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;


# instance fields
.field private final impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    new-instance v0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    new-instance v1, Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;-><init>()V

    const-string v2, "CLASSIC"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;-><init>(Ljava/lang/String;IILcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    sput-object v0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->CLASSIC:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    const/4 v1, 0x1

    new-array v1, v1, [Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    aput-object v0, v1, v3

    .line 31
    sput-object v1, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->$VALUES:[Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->value:I

    .line 45
    iput-object p4, p0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    return-void
.end method

.method public static fromValue(I)Lcn/sharesdk/onekeyshare/OnekeyShareTheme;
    .locals 5

    .line 57
    invoke-static {}, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->values()[Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 58
    iget v4, v3, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_1
    sget-object p0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->CLASSIC:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/onekeyshare/OnekeyShareTheme;
    .locals 1

    .line 31
    const-class v0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    return-object p0
.end method

.method public static values()[Lcn/sharesdk/onekeyshare/OnekeyShareTheme;
    .locals 1

    .line 31
    sget-object v0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->$VALUES:[Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    invoke-virtual {v0}, [Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    return-object v0
.end method


# virtual methods
.method public getImpl()Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 49
    iget v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->value:I

    return v0
.end method

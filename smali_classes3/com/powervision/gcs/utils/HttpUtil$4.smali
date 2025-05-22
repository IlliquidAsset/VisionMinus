.class final Lcom/powervision/gcs/utils/HttpUtil$4;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/HttpUtil;->GetType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$args:[Ljava/lang/reflect/Type;

.field final synthetic val$raw:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/lang/reflect/Type;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/powervision/gcs/utils/HttpUtil$4;->val$raw:Ljava/lang/Class;

    iput-object p2, p0, Lcom/powervision/gcs/utils/HttpUtil$4;->val$args:[Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/powervision/gcs/utils/HttpUtil$4;->val$args:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/powervision/gcs/utils/HttpUtil$4;->val$raw:Ljava/lang/Class;

    return-object v0
.end method

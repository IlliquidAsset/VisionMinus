.class public Lcom/powervision/gcs/http/w4/W4CameraApi;
.super Lcom/powervision/gcs/http/w4/W4RetrofitManager;
.source "W4CameraApi.java"


# static fields
.field private static mInstance:Lcom/powervision/gcs/http/w4/W4CameraApi;


# instance fields
.field private libraryService:Lcom/powervision/gcs/http/w4/W4CameraLibraryService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/powervision/gcs/http/w4/W4CameraApi;

    invoke-direct {v0}, Lcom/powervision/gcs/http/w4/W4CameraApi;-><init>()V

    sput-object v0, Lcom/powervision/gcs/http/w4/W4CameraApi;->mInstance:Lcom/powervision/gcs/http/w4/W4CameraApi;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/powervision/gcs/http/w4/W4RetrofitManager;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/powervision/gcs/http/w4/W4CameraApi;->retrofit:Lretrofit2/Retrofit;

    const-class v1, Lcom/powervision/gcs/http/w4/W4CameraLibraryService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/http/w4/W4CameraLibraryService;

    iput-object v0, p0, Lcom/powervision/gcs/http/w4/W4CameraApi;->libraryService:Lcom/powervision/gcs/http/w4/W4CameraLibraryService;

    return-void
.end method

.method public static get()Lcom/powervision/gcs/http/w4/W4CameraApi;
    .locals 1

    .line 14
    sget-object v0, Lcom/powervision/gcs/http/w4/W4CameraApi;->mInstance:Lcom/powervision/gcs/http/w4/W4CameraApi;

    return-object v0
.end method

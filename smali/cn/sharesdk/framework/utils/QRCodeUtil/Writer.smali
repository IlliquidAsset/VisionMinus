.class public interface abstract Lcn/sharesdk/framework/utils/QRCodeUtil/Writer;
.super Ljava/lang/Object;
.source "Writer.java"


# virtual methods
.method public abstract encode(Ljava/lang/String;Lcn/sharesdk/framework/utils/QRCodeUtil/a;II)Lcn/sharesdk/framework/utils/QRCodeUtil/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation
.end method

.method public abstract encode(Ljava/lang/String;Lcn/sharesdk/framework/utils/QRCodeUtil/a;IILjava/util/Map;)Lcn/sharesdk/framework/utils/QRCodeUtil/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/sharesdk/framework/utils/QRCodeUtil/a;",
            "II",
            "Ljava/util/Map<",
            "Lcn/sharesdk/framework/utils/QRCodeUtil/e;",
            "*>;)",
            "Lcn/sharesdk/framework/utils/QRCodeUtil/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation
.end method

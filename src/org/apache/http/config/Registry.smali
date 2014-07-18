.class public final Lorg/apache/http/config/Registry;
.super Ljava/lang/Object;
.source "Registry.java"

# interfaces
.implements Lorg/apache/http/config/Lookup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/config/Lookup",
        "<TI;>;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TI;>;"
        }
    .end annotation
.end field


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    .local p0, "this":Lorg/apache/http/config/Registry;, "Lorg/apache/http/config/Registry<TI;>;"
    iget-object v0, p0, Lorg/apache/http/config/Registry;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

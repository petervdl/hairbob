.class public Lcom/facebook/NonCachingTokenCachingStrategy;
.super Lcom/facebook/TokenCachingStrategy;
.source "NonCachingTokenCachingStrategy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/facebook/TokenCachingStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method

.method public load()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public save(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 34
    return-void
.end method

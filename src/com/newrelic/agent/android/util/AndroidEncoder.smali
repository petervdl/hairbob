.class public Lcom/newrelic/agent/android/util/AndroidEncoder;
.super Ljava/lang/Object;
.source "AndroidEncoder.java"

# interfaces
.implements Lcom/newrelic/agent/android/util/Encoder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode([B)Ljava/lang/String;
    .registers 3
    .param p1, "bytes"    # [B

    .prologue
    .line 8
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

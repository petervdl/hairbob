.class public Lcom/airbnb/android/requests/PopularRequest$PopularItemWrapper;
.super Ljava/lang/Object;
.source "PopularRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/PopularRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopularItemWrapper"
.end annotation


# instance fields
.field public item:Lcom/airbnb/android/requests/PopularRequest$PopularItem;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "feed_item"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

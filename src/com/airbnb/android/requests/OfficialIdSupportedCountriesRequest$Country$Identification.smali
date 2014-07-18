.class public Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;
.super Ljava/lang/Object;
.source "OfficialIdSupportedCountriesRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Identification"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public type:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;->type:Ljava/lang/String;

    return-object v0
.end method

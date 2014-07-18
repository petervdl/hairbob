.class public Lcom/airbnb/android/requests/Wrappers$PaymentInstrumentWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentInstrumentWrapper"
.end annotation


# instance fields
.field public instrument:Lcom/airbnb/android/models/PaymentInstrument;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "payment_instrument"
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

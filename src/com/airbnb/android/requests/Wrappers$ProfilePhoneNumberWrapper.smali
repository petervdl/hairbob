.class public Lcom/airbnb/android/requests/Wrappers$ProfilePhoneNumberWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfilePhoneNumberWrapper"
.end annotation


# instance fields
.field public phoneNumber:Lcom/airbnb/android/models/ProfilePhoneNumber;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "phone_number"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

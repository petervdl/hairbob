.class Lcom/airbnb/android/models/groups/Event$RegistrationWrapper;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/groups/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegistrationWrapper"
.end annotation


# instance fields
.field public registration:Lcom/airbnb/android/models/groups/Registration;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "registration"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

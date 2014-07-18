.class public Lcom/airbnb/android/requests/Wrappers$UserWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserWrapper"
.end annotation


# instance fields
.field public user:Lcom/airbnb/android/models/User;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setUser(Lcom/airbnb/android/models/User;)V
    .registers 2
    .param p1, "aUser"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/airbnb/android/requests/Wrappers$UserWrapper;->user:Lcom/airbnb/android/models/User;

    .line 41
    return-void
.end method

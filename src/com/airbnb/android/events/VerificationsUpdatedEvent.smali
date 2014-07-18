.class public Lcom/airbnb/android/events/VerificationsUpdatedEvent;
.super Ljava/lang/Object;
.source "VerificationsUpdatedEvent.java"


# instance fields
.field mVerificationsRequest:Lcom/airbnb/android/requests/VerificationsRequest;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/requests/VerificationsRequest;)V
    .registers 2
    .param p1, "request"    # Lcom/airbnb/android/requests/VerificationsRequest;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/airbnb/android/events/VerificationsUpdatedEvent;->mVerificationsRequest:Lcom/airbnb/android/requests/VerificationsRequest;

    .line 11
    return-void
.end method


# virtual methods
.method public getVerificationsRequest()Lcom/airbnb/android/requests/VerificationsRequest;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/airbnb/android/events/VerificationsUpdatedEvent;->mVerificationsRequest:Lcom/airbnb/android/requests/VerificationsRequest;

    return-object v0
.end method

.method public setVerificationsRequest(Lcom/airbnb/android/requests/VerificationsRequest;)V
    .registers 2
    .param p1, "verificationsRequest"    # Lcom/airbnb/android/requests/VerificationsRequest;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/airbnb/android/events/VerificationsUpdatedEvent;->mVerificationsRequest:Lcom/airbnb/android/requests/VerificationsRequest;

    .line 19
    return-void
.end method

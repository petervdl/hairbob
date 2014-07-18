.class public Lcom/airbnb/android/events/LoginStatusEvent;
.super Ljava/lang/Object;
.source "LoginStatusEvent.java"


# instance fields
.field private loggedIn:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2
    .param p1, "loggedIn"    # Z

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/airbnb/android/events/LoginStatusEvent;->loggedIn:Z

    .line 9
    return-void
.end method


# virtual methods
.method public isLoggedIn()Z
    .registers 2

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/airbnb/android/events/LoginStatusEvent;->loggedIn:Z

    return v0
.end method

.method public setLoggedIn(Z)V
    .registers 2
    .param p1, "loggedIn"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/airbnb/android/events/LoginStatusEvent;->loggedIn:Z

    .line 17
    return-void
.end method

.class public Lcom/airbnb/android/events/OfficialIDStatusEvent;
.super Ljava/lang/Object;
.source "OfficialIDStatusEvent.java"


# instance fields
.field private mSuccess:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2
    .param p1, "success"    # Z

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/airbnb/android/events/OfficialIDStatusEvent;->mSuccess:Z

    .line 9
    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .registers 2

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/airbnb/android/events/OfficialIDStatusEvent;->mSuccess:Z

    return v0
.end method

.method public setSuccess(Z)V
    .registers 2
    .param p1, "success"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/airbnb/android/events/OfficialIDStatusEvent;->mSuccess:Z

    .line 17
    return-void
.end method

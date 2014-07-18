.class Lcom/airbnb/android/activities/VerifiedIdActivity$2;
.super Ljava/lang/Object;
.source "VerifiedIdActivity.java"

# interfaces
.implements Lcom/airbnb/android/handlerthread/VerificationsPoller$VerificationsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/VerifiedIdActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/VerifiedIdActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/VerifiedIdActivity;)V
    .registers 2

    .prologue
    .line 220
    iput-object p1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity$2;->this$0:Lcom/airbnb/android/activities/VerifiedIdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerificationsResponse(Lcom/airbnb/android/models/CheckpointVerifications;)V
    .registers 3
    .param p1, "verifications"    # Lcom/airbnb/android/models/CheckpointVerifications;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity$2;->this$0:Lcom/airbnb/android/activities/VerifiedIdActivity;

    # invokes: Lcom/airbnb/android/activities/VerifiedIdActivity;->handleVerificationsResponse(Lcom/airbnb/android/models/CheckpointVerifications;)V
    invoke-static {v0, p1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->access$500(Lcom/airbnb/android/activities/VerifiedIdActivity;Lcom/airbnb/android/models/CheckpointVerifications;)V

    .line 225
    return-void
.end method

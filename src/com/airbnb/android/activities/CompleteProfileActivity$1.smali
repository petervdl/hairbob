.class Lcom/airbnb/android/activities/CompleteProfileActivity$1;
.super Ljava/lang/Object;
.source "CompleteProfileActivity.java"

# interfaces
.implements Lcom/airbnb/android/handlerthread/VerificationsPoller$VerificationsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/CompleteProfileActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/CompleteProfileActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/CompleteProfileActivity;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity$1;->this$0:Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerificationsResponse(Lcom/airbnb/android/models/CheckpointVerifications;)V
    .registers 3
    .param p1, "verifications"    # Lcom/airbnb/android/models/CheckpointVerifications;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity$1;->this$0:Lcom/airbnb/android/activities/CompleteProfileActivity;

    # invokes: Lcom/airbnb/android/activities/CompleteProfileActivity;->handleVerificationsResponse(Lcom/airbnb/android/models/CheckpointVerifications;)V
    invoke-static {v0, p1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->access$000(Lcom/airbnb/android/activities/CompleteProfileActivity;Lcom/airbnb/android/models/CheckpointVerifications;)V

    .line 195
    return-void
.end method

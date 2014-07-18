.class public Lcom/newrelic/agent/android/activity/NamedActivity;
.super Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;
.source "NamedActivity.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/activity/NamedActivity;->setName(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/activity/NamedActivity;->setAutoInstrumented(Z)V

    .line 15
    return-void
.end method


# virtual methods
.method public rename(Ljava/lang/String;)V
    .registers 2
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/activity/NamedActivity;->setName(Ljava/lang/String;)V

    .line 19
    return-void
.end method

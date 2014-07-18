.class public Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;
.super Ljava/lang/Object;
.source "ArrivalPlanUpdatedEvent.java"


# instance fields
.field public arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)V
    .registers 2
    .param p1, "plan"    # Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .line 12
    return-void
.end method

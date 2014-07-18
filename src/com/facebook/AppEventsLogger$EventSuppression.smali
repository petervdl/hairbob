.class Lcom/facebook/AppEventsLogger$EventSuppression;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventSuppression"
.end annotation


# instance fields
.field private behavior:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

.field private timeoutPeriod:I


# direct methods
.method constructor <init>(ILcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;)V
    .registers 3
    .param p1, "timeoutPeriod"    # I
    .param p2, "behavior"    # Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->timeoutPeriod:I

    .line 143
    iput-object p2, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->behavior:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    .line 144
    return-void
.end method


# virtual methods
.method getBehavior()Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->behavior:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    return-object v0
.end method

.method getTimeoutPeriod()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->timeoutPeriod:I

    return v0
.end method

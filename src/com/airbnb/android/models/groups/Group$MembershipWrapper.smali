.class Lcom/airbnb/android/models/groups/Group$MembershipWrapper;
.super Ljava/lang/Object;
.source "Group.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/groups/Group;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MembershipWrapper"
.end annotation


# instance fields
.field membership:Lcom/airbnb/android/models/groups/Membership;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "membership"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

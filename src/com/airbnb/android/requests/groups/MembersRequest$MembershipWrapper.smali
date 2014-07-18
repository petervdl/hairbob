.class Lcom/airbnb/android/requests/groups/MembersRequest$MembershipWrapper;
.super Ljava/lang/Object;
.source "MembersRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/groups/MembersRequest;
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
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

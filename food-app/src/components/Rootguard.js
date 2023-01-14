import AuthGaurd from "./AuthGaurd";
import React from "react";

const RootGaurd = ({ children }) => {
  return <AuthGaurd>{children}</AuthGaurd>;
};

export default RootGaurd;